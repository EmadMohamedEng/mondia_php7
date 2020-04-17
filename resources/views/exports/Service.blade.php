<table>
    <thead>
    <tr>
        <th>TitleAr</th>
        <th>TitleEn</th>
    </tr>
    </thead>
    <tbody>
    @foreach($services as $service)
        <tr>
            <td>{{ $service->title }}</td>
            <td>{{ $service->getTranslation('title','ar') }}</td>
        </tr>
    @endforeach
    </tbody>
</table>