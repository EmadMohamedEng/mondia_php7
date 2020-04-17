<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>TitleAr</th>
        <th>TitleEn</th>
    </tr>
    </thead>
    <tbody>
    @foreach($services as $service)
        <tr>
            <td>{{ $service->id }}</td>
            <td>{{ $service->title }}</td>
            <td>{{ $service->getTranslation('title','ar') }}</td>
        </tr>
    @endforeach
    </tbody>
</table>
