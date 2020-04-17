<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>TitleAr</th>
        <th>TitleEn</th>
    </tr>
    </thead>
    <tbody>
    @foreach($Provider as $providers)
        <tr>
            <td>{{ $providers->id }}</td>
            <td>{{ $providers->title }}</td>
            <td>{{ $providers->getTranslation('title','ar') }}</td>
        </tr>
    @endforeach
    </tbody>
</table>
